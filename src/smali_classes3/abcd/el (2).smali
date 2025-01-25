.class public Labcd/el;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/el;

    const-wide v1, 0x14a06f5906f9e200L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x68a2683c64d53895L  # 1.0749648265985665E196

    :try_start_6
    sget-boolean v3, Labcd/el;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/el;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private FH(Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28683297dfc700acL
    .end annotation

    const-wide v0, -0x26ac80f9d33bfe0fL  # -2.0137611604484186E122

    :try_start_5
    sget-boolean v2, Labcd/el;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalFilesDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Samples/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$j;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-object p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/el;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method static synthetic j6(Labcd/el;Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/el;->FH(Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/el;->j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1355a46ae20aff29L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/el;->j6:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x32859246b4b2218L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_2a

    if-eqz v0, :cond_1e

    const-string v0, "正在导出示例中..."

    goto :goto_20

    .line 99
    :cond_1e
    const-string v0, "Expanding sample..."

    .line 0
    :goto_20
    :try_start_20
    new-instance v1, Labcd/dl;

    invoke-direct {v1, p0, p2, p3, p4}, Labcd/dl;-><init>(Labcd/el;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    return-void

    .line 99
    :catchall_2a
    move-exception v0

    sget-boolean v1, Labcd/el;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x32859246b4b2218L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method private j6(Lcom/aide/ui/trainer/g$j;Ljava/util/List;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x12e597ad71d75140L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/trainer/g$j;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/el;->j6:Z

    if-eqz v1, :cond_12

    const-wide v2, -0x137c9f437929627L  # -5.18848411382704E302

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_19b

    :cond_12
    :try_start_12
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/el;->FH(Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_38
    :goto_38
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_195

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$j;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$j;->Hw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extract "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$j;->j6()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b1
    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_d5} :catch_199
    .catchall {:try_start_12 .. :try_end_d5} :catchall_19b

    goto :goto_b1

    :cond_d6
    :try_start_d6
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_e6

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_38

    :cond_e6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "build.gradle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".cpp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".cc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".hpp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".css"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, ".js"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_159

    goto :goto_167

    :cond_159
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_38

    :cond_167
    :goto_167
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_18d} :catch_18f
    .catchall {:try_start_d6 .. :try_end_18d} :catchall_19b

    goto/16 :goto_38

    :catch_18f
    move-exception v4

    :try_start_190
    invoke-static {v4}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    goto/16 :goto_38

    :cond_195
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_198} :catch_199
    .catchall {:try_start_190 .. :try_end_198} :catchall_19b

    goto :goto_19a

    :catch_199
    move-exception p1

    :goto_19a
    return-void

    :catchall_19b
    move-exception v0

    sget-boolean v1, Labcd/el;->DW:Z

    if-eqz v1, :cond_1ad

    const-wide v2, -0x137c9f437929627L  # -5.18848411382704E302

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1ad
    goto :goto_1af

    :goto_1ae
    throw v0

    :goto_1af
    goto :goto_1ae
.end method


# virtual methods
.method public DW(Lcom/aide/ui/trainer/g$j;)Z
    .registers 6

    const-wide v0, 0x173bcb3f47484320L

    :try_start_5
    sget-boolean v2, Labcd/el;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Labcd/el;->FH(Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/el;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method protected j6(Lcom/aide/ui/trainer/g$j;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x31af9045c22b9310L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/trainer/g$j;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x7e055b02bf84c9L

    :try_start_5
    sget-boolean v2, Labcd/el;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_29

    const-string v5, "AIDESamples"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "AIDEWebSamples"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    :goto_1e
    if-ge v6, v3, :cond_28

    :try_start_20
    aget-object v5, v4, v6

    invoke-direct {p0, p1, v2, v5}, Labcd/el;->j6(Lcom/aide/ui/trainer/g$j;Ljava/util/List;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_29

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_28
    return-object v2

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/el;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v2

    :goto_33
    goto :goto_32
.end method

.method public j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/el;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4f53a0df7c70628dL  # 1.387215952773569E74

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p0, p2}, Labcd/el;->DW(Lcom/aide/ui/trainer/g$j;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p2}, Lcom/aide/ui/trainer/g$j;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0648

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0649

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Labcd/_k;

    invoke-direct {v5, p0, p1, p2, p3}, Labcd/_k;-><init>(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0647

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Labcd/al;

    invoke-direct {v7, p0, p1, p2, p3}, Labcd/al;-><init>(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_62

    :cond_4b
    invoke-virtual {p2}, Lcom/aide/ui/trainer/g$j;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0646

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/bl;

    invoke-direct {v2, p0, p1, p2, p3}, Labcd/bl;-><init>(Labcd/el;Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V

    invoke-static {p1, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    :goto_62
    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Labcd/el;->DW:Z

    if-eqz v1, :cond_75

    const-wide v2, 0x4f53a0df7c70628dL  # 1.387215952773569E74

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    throw v0
.end method
