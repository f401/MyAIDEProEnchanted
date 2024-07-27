.class public Lorg/apache/tools/ant/taskdefs/SQLExec;
.super Lorg/apache/tools/ant/taskdefs/JDBCTask;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;,
        Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;,
        Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;
    }
.end annotation


# instance fields
.field private append:Z

.field private conn:Ljava/sql/Connection;

.field private csvColumnSep:Ljava/lang/String;

.field private csvQuoteChar:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private delimiterType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private errorProperty:Ljava/lang/String;

.field private escapeProcessing:Z

.field private expandProperties:Z

.field private forceCsvQuoteChar:Z

.field private goodSql:I

.field private keepformat:Z

.field private onError:Ljava/lang/String;

.field private output:Lorg/apache/tools/ant/types/Resource;

.field private outputEncoding:Ljava/lang/String;

.field private print:Z

.field private rawBlobs:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private rowCountProperty:Ljava/lang/String;

.field private showWarnings:Z

.field private showheaders:Z

.field private showtrailers:Z

.field private sqlCommand:Ljava/lang/String;

.field private srcFile:Ljava/io/File;

.field private statement:Ljava/sql/Statement;

.field private strictDelimiterMatching:Z

.field private totalSql:I

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private treatWarningsAsErrors:Z

.field private warningProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;-><init>()V

    .line 98
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    .line 100
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    .line 105
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 115
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    .line 120
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 135
    const-string v0, ";"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 141
    const-string v0, "normal"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    .line 146
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    .line 151
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    .line 156
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    .line 161
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    .line 166
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    .line 171
    const-string v0, "abort"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    .line 181
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    .line 186
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    .line 193
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    .line 201
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    .line 213
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    .line 219
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    .line 228
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    .line 248
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    .line 254
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    .line 260
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    .line 266
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    .line 273
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method private closeQuietly()V
    .registers 3

    .line 930
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isAutocommit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "abort"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private maybeQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 909
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    .line 910
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-object p1

    .line 913
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-char v5, v3, v0

    .line 916
    if-ne v5, v2, :cond_2

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 921
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 898
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rawBlobs:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_1

    .line 899
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->run()V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printWarnings(Ljava/sql/SQLWarning;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1109
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_1

    move-object v1, p1

    .line 1111
    :goto_0
    if-eqz v1, :cond_1

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sql warning"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1112
    :goto_1
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1114
    invoke-virtual {v1}, Ljava/sql/SQLWarning;->getNextWarning()Ljava/sql/SQLWarning;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1113
    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    .line 1117
    :cond_1
    if-eqz p1, :cond_2

    .line 1118
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setWarningProperty()V

    .line 1120
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_4

    .line 1123
    :cond_3
    return-void

    .line 1121
    :cond_4
    throw p1

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 337
    if-eqz p1, :cond_1

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 344
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 338
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot add null ResourceCollection"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 328
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;
    .registers 3

    .line 353
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;-><init>(Lorg/apache/tools/ant/taskdefs/SQLExec;)V

    .line 354
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-object v0
.end method

.method protected execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 793
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 799
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v3

    .line 800
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    move-object v0, v2

    .line 802
    :goto_1
    if-eq v4, v5, :cond_1

    .line 803
    add-int/2addr v1, v4

    .line 805
    :cond_1
    if-eqz v3, :cond_2

    .line 806
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 807
    invoke-interface {v0}, Ljava/sql/ResultSet;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 808
    invoke-interface {v0}, Ljava/sql/ResultSet;->clearWarnings()V

    .line 809
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    if-eqz v2, :cond_2

    .line 810
    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V

    .line 813
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v2

    .line 814
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v3

    invoke-interface {v3}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v4

    .line 815
    if-nez v2, :cond_7

    if-ne v4, v5, :cond_7

    .line 817
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 818
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Statement;->clearWarnings()V

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rows affected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 821
    if-eq v1, v5, :cond_3

    .line 822
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setRowCountProperty(I)V

    .line 825
    :cond_3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    if-eqz v2, :cond_4

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows affected"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    .line 829
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 830
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Connection;->clearWarnings()V

    .line 831
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    :cond_5
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 832
    :catch_0
    move-exception v1

    move-object v0, v2

    .line 833
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 834
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setErrorProperty()V

    .line 835
    const-string v2, "abort"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 836
    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 838
    :cond_6
    const-string v2, "continue"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 839
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 843
    throw v1

    .line 832
    :catch_1
    move-exception v1

    goto :goto_2

    .line 842
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    move v3, v2

    goto/16 :goto_1
.end method

.method public execute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 616
    new-instance v3, Ljava/util/Vector;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 617
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 622
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 639
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    move-result-object v2

    .line 640
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 719
    throw v0

    .line 624
    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 626
    const-string v1, "Source file or resource collection, transactions or sql statement must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 631
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a file!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 645
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrc(Ljava/io/File;)V

    .line 647
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->addText(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_5

    .line 717
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 719
    :goto_1
    return-void

    .line 655
    :cond_5
    :try_start_2
    invoke-static {}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;->wrapSystemOut()Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    .line 657
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_d

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening PrintStream to output Resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 659
    const/4 v1, 0x0

    .line 660
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    .line 661
    const-class v5, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 662
    if-eqz v0, :cond_8

    .line 663
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 681
    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 682
    new-instance v1, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    invoke-direct {v1, v5, v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 690
    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    .line 691
    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->access$000(Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;Ljava/io/PrintStream;)V

    .line 692
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isAutocommit()Z

    move-result v0

    if-nez v0, :cond_7

    .line 693
    const-string v0, "Committing transaction"

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 694
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 698
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_5
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 699
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 700
    :catch_0
    move-exception v0

    .line 701
    :goto_6
    :try_start_6
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->closeQuietly()V

    .line 702
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setErrorProperty()V

    .line 703
    const-string v1, "abort"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v1

    if-nez v1, :cond_b

    .line 708
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 712
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SQL statements executed successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 717
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    goto/16 :goto_1

    .line 665
    :cond_8
    :try_start_9
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    if-eqz v0, :cond_c

    .line 666
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    .line 667
    const-class v5, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Appendable;

    .line 668
    if-eqz v0, :cond_c

    .line 669
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 672
    :goto_9
    if-nez v0, :cond_6

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 674
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    if-eqz v1, :cond_6

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring append=true for non-appendable resource "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 698
    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 685
    :cond_9
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v1, v0

    goto/16 :goto_3

    .line 698
    :cond_a
    :try_start_a
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 699
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 712
    :goto_a
    :try_start_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    goto :goto_8

    .line 704
    :cond_b
    :try_start_d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 707
    :catchall_3
    move-exception v0

    .line 708
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 712
    :goto_b
    :try_start_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 713
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 709
    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 700
    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 709
    :catch_4
    move-exception v0

    goto :goto_a

    :cond_c
    move-object v0, v1

    goto :goto_9

    :cond_d
    move-object v1, v2

    goto/16 :goto_3
.end method

.method protected getConnection()Ljava/sql/Connection;
    .registers 2

    .line 952
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    if-nez v0, :cond_0

    .line 953
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 954
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isValidRdbms(Ljava/sql/Connection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getExpandProperties()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    return v0
.end method

.method protected getStatement()Ljava/sql/Statement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    if-nez v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    .line 976
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    invoke-interface {v0, v1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    return-object v0
.end method

.method public lastDelimiterPosition(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    .line 1071
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    if-eqz v1, :cond_3

    .line 1072
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 1073
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/StringUtils;->endsWith(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    .line 1074
    const-string v2, "row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 1075
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1103
    :cond_2
    :goto_0
    return v0

    .line 1081
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    const-string v1, "normal"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1085
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1087
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1088
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1090
    :cond_4
    if-lt v1, v2, :cond_2

    .line 1093
    :goto_2
    if-ltz v2, :cond_5

    .line 1094
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1095
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1098
    add-int/lit8 v1, v1, -0x1

    .line 1099
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1101
    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 1103
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected printResults(Ljava/io/PrintStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 857
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 859
    :cond_0
    return-void

    .line 856
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    throw v1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 869
    if-eqz p1, :cond_3

    .line 870
    const-string v0, "Processing new result set."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 871
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    .line 872
    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    .line 873
    if-lez v3, :cond_3

    .line 874
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    if-eqz v0, :cond_1

    .line 875
    invoke-interface {v2, v5}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    .line 876
    :goto_0
    if-gt v0, v3, :cond_0

    .line 877
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 878
    invoke-interface {v2, v0}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 882
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    invoke-direct {p0, p1, v5, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V

    move v0, v1

    .line 884
    :goto_2
    if-gt v0, v3, :cond_2

    .line 885
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 888
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 889
    invoke-interface {p1}, Ljava/sql/ResultSet;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    goto :goto_1

    .line 893
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 894
    return-void
.end method

.method protected runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 731
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 733
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 736
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 737
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-nez v1, :cond_1

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 740
    :cond_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_2
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-nez v1, :cond_3

    .line 744
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 752
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 753
    const-string v4, "REM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-eqz v1, :cond_5

    const-string v1, "\n"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-nez v1, :cond_4

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 765
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    :cond_4
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->lastDelimiterPosition(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v0

    .line 768
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 769
    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 770
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {v2, v5, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 759
    :cond_5
    const-string v1, " "

    goto :goto_1

    .line 774
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 775
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 777
    :cond_7
    return-void
.end method

.method public setAppend(Z)V
    .registers 2

    .line 458
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    .line 459
    return-void
.end method

.method public setCsvColumnSeparator(Ljava/lang/String;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setCsvQuoteCharacter(Ljava/lang/String;)V
    .registers 4

    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 567
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    .line 568
    return-void

    .line 564
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The quote character must be a single character."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setDelimiterType(Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;)V
    .registers 3

    .line 389
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    .line 365
    return-void
.end method

.method protected final setErrorProperty()V
    .registers 3

    .line 1126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setEscapeProcessing(Z)V
    .registers 2

    .line 487
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    .line 488
    return-void
.end method

.method public setExpandProperties(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    .line 297
    return-void
.end method

.method public setForceCsvQuoteChar(Z)V
    .registers 2

    .line 607
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    .line 608
    return-void
.end method

.method public setKeepformat(Z)V
    .registers 2

    .line 478
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    .line 479
    return-void
.end method

.method public setOnerror(Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;)V
    .registers 3

    .line 468
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 4

    .line 426
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setOutput(Lorg/apache/tools/ant/types/Resource;)V

    .line 427
    return-void
.end method

.method public setOutput(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    .line 437
    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setPrint(Z)V
    .registers 2

    .line 398
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    .line 399
    return-void
.end method

.method public setRawBlobs(Z)V
    .registers 2

    .line 496
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rawBlobs:Z

    .line 497
    return-void
.end method

.method protected final setRowCountProperty(I)V
    .registers 4

    .line 1134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public setRowCountProperty(Ljava/lang/String;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setShowWarnings(Z)V
    .registers 2

    .line 518
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    .line 519
    return-void
.end method

.method public setShowheaders(Z)V
    .registers 2

    .line 407
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    .line 408
    return-void
.end method

.method public setShowtrailers(Z)V
    .registers 2

    .line 417
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    .line 418
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    .line 287
    return-void
.end method

.method public setStrictDelimiterMatching(Z)V
    .registers 2

    .line 508
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    .line 509
    return-void
.end method

.method public setTreatWarningsAsErrors(Z)V
    .registers 2

    .line 528
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    .line 529
    return-void
.end method

.method protected final setWarningProperty()V
    .registers 3

    .line 1130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method public setWarningProperty(Ljava/lang/String;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    .line 590
    return-void
.end method
