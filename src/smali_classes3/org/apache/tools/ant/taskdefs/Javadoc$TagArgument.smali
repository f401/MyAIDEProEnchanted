.class public Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;
.super Lorg/apache/tools/ant/types/FileSet;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagArgument"
.end annotation


# instance fields
.field private enabled:Z

.field private name:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .registers 3

    .line 1449
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 1438
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    .line 1446
    const-string v0, "a"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    .line 1451
    return-void
.end method


# virtual methods
.method public getParameter()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1558
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_1

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1565
    :goto_1
    return-object v0

    .line 1559
    :cond_0
    const-string v0, "X"

    goto :goto_0

    .line 1562
    :cond_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v1, :cond_2

    const-string v1, "a"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1563
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1565
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    goto :goto_1

    .line 1563
    :cond_4
    const-string v0, "X"

    goto :goto_2

    .line 1556
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No name specified for custom tag."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1545
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    .line 1546
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1460
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    .line 1461
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1480
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1482
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v2, v2

    new-array v4, v2, [Z

    .line 1489
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v5, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 1490
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1491
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1492
    const-string v7, "all"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1493
    if-eqz v2, :cond_0

    .line 1494
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    const-string v6, "Repeated tag scope element: all"

    invoke-virtual {v2, v6, v10}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_0
    move v2, v3

    .line 1497
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1500
    :goto_1
    sget-object v7, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 1501
    sget-object v7, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1505
    :cond_2
    sget-object v7, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v7, v7

    if-eq v0, v7, :cond_5

    .line 1509
    aget-boolean v7, v4, v0

    if-eqz v7, :cond_3

    .line 1510
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Repeated tag scope element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v10}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1513
    :cond_3
    aput-boolean v3, v4, v0

    move v0, v3

    .line 1514
    goto :goto_0

    .line 1500
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1506
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unrecognised scope element: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1518
    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_9

    .line 1522
    :cond_7
    if-nez v0, :cond_8

    if-eqz v2, :cond_a

    .line 1526
    :cond_8
    if-eqz v2, :cond_b

    .line 1527
    const-string v0, "a"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    .line 1537
    :goto_2
    return-void

    .line 1519
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Mixture of \"all\" and other scope elements in tag parameter."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No scope elements specified in tag parameter."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 1530
    :goto_3
    array-length v3, v4

    if-ge v0, v3, :cond_d

    .line 1531
    aget-boolean v3, v4, v0

    if-eqz v3, :cond_c

    .line 1532
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1530
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1535
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    goto :goto_2
.end method
