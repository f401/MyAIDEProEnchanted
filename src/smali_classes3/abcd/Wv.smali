.class public Labcd/Wv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Wv$a;
    }
.end annotation


# direct methods
.method private static DW()Ljava/io/File;
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "properties"

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static j6()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/Wv$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/Wv;->DW()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_57

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    :try_start_21
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_4e

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    new-instance v10, Labcd/Xv;

    invoke-direct {v10, v5}, Labcd/Xv;-><init>(Ljava/io/DataInputStream;)V

    new-instance v4, Labcd/Wv$a;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Labcd/Wv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_49

    :try_start_45
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    goto :goto_54

    :catchall_49
    move-exception v4

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    throw v4
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v4

    const-string v5, "Property error"

    invoke-static {v5, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_57
    new-instance v1, Labcd/Vv;

    invoke-direct {v1}, Labcd/Vv;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;J)V
    .registers 9

    iget-boolean v0, p2, Labcd/Xv;->tp:Z

    if-eqz v0, :cond_43

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/Wv;->DW()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_3d

    :try_start_28
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p2, v1}, Labcd/Xv;->j6(Ljava/io/DataOutputStream;)V
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_38

    :try_start_34
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto :goto_43

    :catchall_38
    move-exception p0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw p0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    const-string p1, "Property error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    return-void
.end method
