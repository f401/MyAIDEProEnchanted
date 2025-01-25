.class public Lcom/aide/uidesigner/e;
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

    const-class v0, Lcom/aide/uidesigner/e;

    const-wide v1, -0x258a95d2fdbbf9dfL  # -5.798440072010822E127

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1acf89cedee0cc64L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x40e7dca0ebe8f044L  # 48869.02879759719

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

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

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static DW(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    const-string v0, "_data"

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/e;->j6:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    const-wide v3, -0x5d6f2ac0fec0a81cL

    invoke-static {v3, v4, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_4b

    return-object p0

    :cond_4a
    return-object v2

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x5d6f2ac0fec0a81cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v0
.end method

.method public static DW(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4e3cc347381cc3e8L  # -5.574587521711708E-69

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    const-string v5, "layout"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_37

    array-length v5, v4
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_40

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    :try_start_25
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_37
    new-instance v4, Lcom/aide/uidesigner/d;

    invoke-direct {v4}, Lcom/aide/uidesigner/d;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_40

    return-object v3

    :catchall_40
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v3

    :goto_4a
    goto :goto_49
.end method

.method public static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-wide v0, 0x5453ab84208f43d3L  # 1.6805933055280216E98

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

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

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_69

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v3

    :goto_6b
    goto :goto_6a
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "layout"

    const/4 v1, 0x0

    const-wide v2, -0x3bd3b6d5a2ae1edL  # -3.657974300369875E290

    :try_start_8
    sget-boolean v4, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    const/4 v5, 0x1

    :goto_18
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_3f

    return-object p0

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :catchall_3f
    move-exception v0

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_47

    invoke-static {v0, v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x355689b4742a6865L  # -4.7632494824203626E51

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    int-to-long v4, v3

    add-long/2addr v1, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_13

    :cond_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-wide v1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x355689b4742a6865L  # -4.7632494824203626E51

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method public static j6()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0xa9a83a81e0955a9L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/uidesigner/e;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/AppProjects/UIDesigns/res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static j6(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/e;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0xa89bf871f9412f8L  # -6.682243861584059E257

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0, p1}, Lcom/aide/uidesigner/e;->DW(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0xa89bf871f9412f8L  # -6.682243861584059E257

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-wide v1, -0x14a794e42e7b0ad0L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    const-string v4, "layout"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_34

    array-length v4, v3
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_3d

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    :try_start_20
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_34
    invoke-static {p0}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3d

    return-object p0

    :catchall_3d
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v4, :cond_45

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v3

    :goto_47
    goto :goto_46
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x5bd59125ccbbe00L  # -8.464335294436952E280

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x5bd59125ccbbe00L  # -8.464335294436952E280

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/e;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x6b8fada56f164a0L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_51

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/File;

    const-string v1, "layout"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    :cond_26
    invoke-static {p0}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/aide/uidesigner/e;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_3e
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4d} :catch_4e
    .catchall {:try_start_10 .. :try_end_4d} :catchall_51

    return-object p0

    :catch_4e
    move-exception p0

    const/4 p0, 0x0

    return-object p0

    :catchall_51
    move-exception v0

    move-object v6, p1

    sget-boolean p1, Lcom/aide/uidesigner/e;->DW:Z

    if-eqz p1, :cond_63

    const-wide v2, -0x6b8fada56f164a0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method
