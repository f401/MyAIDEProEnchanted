.class Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;
.super Landroid/os/AsyncTask;
.source "ConverProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/ConverProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConverProjectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field artifact_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field class_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private listener:Lcom/s1243808733/aide/util/ConverProject$Listener;

.field private project:Ljava/io/File;

.field startTime:J

.field final this$0:Lcom/s1243808733/aide/util/ConverProject;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 7

    .line 108
    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->this$0:Lcom/s1243808733/aide/util/ConverProject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    .line 105
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    .line 109
    iput-object p2, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->project:Ljava/io/File;

    .line 110
    iput p3, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->code:I

    .line 111
    iput-object p4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->listener:Lcom/s1243808733/aide/util/ConverProject$Listener;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    .line 113
    invoke-interface {p4}, Lcom/s1243808733/aide/util/ConverProject$Listener;->onStart()V

    return-void
.end method

.method private initMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_48

    .line 213
    :try_start_d
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_44

    .line 214
    :try_start_14
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 215
    :cond_17
    :goto_17
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 216
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    array-length v2, v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_41

    const/4 v3, 0x2

    if-lt v2, v3, :cond_17

    .line 218
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 219
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 221
    :try_start_31
    iget v3, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->code:I

    if-nez v3, :cond_39

    .line 222
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 224
    :cond_39
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_41

    goto :goto_17

    .line 231
    :cond_3d
    :try_start_3d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_4e

    :catchall_41
    move-exception p1

    move-object v0, v1

    goto :goto_45

    .line 232
    :catchall_44
    move-exception p1

    :goto_45
    move-object p1, v0

    move-object v0, p2

    goto :goto_4a

    :catchall_48
    move-exception p1

    move-object p1, v0

    .line 231
    :goto_4a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move-object v1, p1

    .line 232
    :goto_4e
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_52

    goto :goto_53

    .line 231
    :catchall_52
    move-exception p1

    :goto_53
    return-void
.end method

.method private replaces(Ljava/io/File;Ljava/io/FileFilter;)V
    .registers 10

    .line 179
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 183
    :cond_7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_75

    aget-object v2, p1, v1

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 186
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->replaces(Ljava/io/File;Ljava/io/FileFilter;)V

    goto :goto_72

    .line 188
    :cond_17
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 190
    iget-object v4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 193
    iget-object v6, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    .line 195
    :cond_46
    iget-object v4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 198
    iget-object v6, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_50

    .line 200
    :cond_6f
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_75
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 97
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    const-string v0, "androidx/androidx-artifact-mapping.csv"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->initMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    const-string v0, "androidx/androidx-class-mapping.csv"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->initMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->project:Ljava/io/File;

    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask$1;-><init>(Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;)V

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->replaces(Ljava/io/File;Ljava/io/FileFilter;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 97
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6

    .line 166
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "请退出AIDE或者重新打开工程\n\n秏时："

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 173
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please exit aide or reopen the project\n\ntime："

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_4a
    iget-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->listener:Lcom/s1243808733/aide/util/ConverProject$Listener;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/s1243808733/aide/util/ConverProject$Listener;->onFinish(Ljava/lang/String;)V

    return-void
.end method
