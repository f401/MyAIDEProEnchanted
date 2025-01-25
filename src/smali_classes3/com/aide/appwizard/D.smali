.class public Lcom/aide/appwizard/D;
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

    const-class v0, Lcom/aide/appwizard/D;

    const-wide v1, 0x1cddac06632cf380L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x8394de3ffd67618L

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/D;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/D;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0xd9deac16d1cb368L  # -9.646208957742408E242

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/D;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    return-object v0

    :cond_1c
    const-string v0, "/mnt/sdcard"

    return-object v0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/D;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-wide v0, -0x24cbce24fe3e1a53L  # -2.239734633678076E131

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/D;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_61

    :cond_d
    const-string v3, ""

    if-nez p0, :cond_12

    return-object v3

    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_57
    .catchall {:try_start_12 .. :try_end_28} :catchall_4d

    const/16 v6, 0x400

    :try_start_2a
    new-array v6, v6, [C

    :goto_2c
    invoke-virtual {v5, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3c

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    :cond_3c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_43} :catch_4b
    .catchall {:try_start_2a .. :try_end_43} :catchall_49

    :try_start_43
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_61

    goto :goto_48

    :catch_47
    move-exception p0

    :goto_48
    return-object v3

    :catchall_49
    move-exception v3

    goto :goto_4f

    :catch_4b
    move-exception v4

    goto :goto_59

    :catchall_4d
    move-exception v3

    move-object v5, v2

    :goto_4f
    if-eqz v5, :cond_56

    :try_start_51
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_61

    goto :goto_56

    :catch_55
    move-exception v4

    :cond_56
    :goto_56
    :try_start_56
    throw v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_61

    :catch_57
    move-exception v4

    move-object v5, v2

    :goto_59
    if-eqz v5, :cond_60

    :try_start_5b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_61

    goto :goto_60

    :catch_5f
    move-exception p0

    :cond_60
    :goto_60
    return-object v3

    :catchall_61
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/D;->DW:Z

    if-eqz v4, :cond_69

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v3

    :goto_6b
    goto :goto_6a
.end method
