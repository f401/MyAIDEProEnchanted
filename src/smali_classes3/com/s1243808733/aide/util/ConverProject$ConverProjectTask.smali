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
        "Landroid/os/AsyncTask",
        "<",
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field class_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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

.field private final this$0:Lcom/s1243808733/aide/util/ConverProject;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/util/ConverProject;Ljava/io/File;ILcom/s1243808733/aide/util/ConverProject$Listener;)V
    .registers 7

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->this$0:Lcom/s1243808733/aide/util/ConverProject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    .line 109
    iput-object p2, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->project:Ljava/io/File;

    .line 110
    iput p3, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->code:I

    .line 111
    iput-object p4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->listener:Lcom/s1243808733/aide/util/ConverProject$Listener;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    .line 113
    invoke-interface {p4}, Lcom/s1243808733/aide/util/ConverProject$Listener;->onStart()V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;)Lcom/s1243808733/aide/util/ConverProject;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->this$0:Lcom/s1243808733/aide/util/ConverProject;

    return-object v0
.end method

.method private initMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 209
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    .line 210
    check-cast v1, Ljava/util/Scanner;

    .line 212
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 213
    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 214
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 232
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    return-void

    .line 216
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 217
    array-length v3, v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 218
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 219
    const/4 v4, 0x1

    aget-object v1, v1, v4

    .line 221
    :try_start_5
    iget v4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->code:I

    if-nez v4, :cond_2

    .line 222
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_3
    move-object v0, v1

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    .line 231
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 232
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    throw v5

    .line 215
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    .line 232
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private replaces(Ljava/io/File;Ljava/io/FileFilter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 181
    if-nez v4, :cond_1

    .line 200
    :cond_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 200
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_0

    .line 183
    aget-object v5, v4, v2

    .line 185
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0, v5, p2}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->replaces(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 200
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v5}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v0

    .line 193
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 198
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 200
    invoke-static {v5, v3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_1

    .line 191
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 196
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->artifact_map:Ljava/util/HashMap;

    const-string v1, "androidx/androidx-artifact-mapping.csv"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->initMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->class_map:Ljava/util/HashMap;

    const-string v1, "androidx/androidx-class-mapping.csv"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->initMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->project:Ljava/io/File;

    new-instance v1, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask$100000002;-><init>(Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->replaces(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 161
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 166
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "\u8bf7\u9000\u51faAIDE\u6216\u8005\u91cd\u65b0\u6253\u5f00\u5de5\u7a0b\n\n\u79cf\u65f6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$ConverProjectTask;->listener:Lcom/s1243808733/aide/util/ConverProject$Listener;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/s1243808733/aide/util/ConverProject$Listener;->onFinish(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Please exit aide or reopen the project\n\ntime\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
