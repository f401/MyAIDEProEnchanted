.class public Labcd/Sk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Sk$a;,
        Labcd/Sk$b;
    }
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

    const-class v0, Labcd/Sk;

    const-wide v1, -0x714e171a42b7e70L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x50de56e5cd958439L  # -1.1636317310374252E-81

    :try_start_6
    sget-boolean v3, Labcd/Sk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Sk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .registers 25
    .annotation runtime Labcd/su;
        method = 0x180b19e5572fb30bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    sget-boolean v8, Labcd/Sk;->j6:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_40

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/4 v10, 0x3

    aput-object v3, v8, v10

    const/4 v10, 0x4

    aput-object v4, v8, v10

    const/4 v10, 0x5

    aput-object v5, v8, v10

    const/4 v10, 0x6

    aput-object v6, v8, v10

    const/4 v10, 0x7

    aput-object v7, v8, v10

    const-wide v10, -0x807e8e2312d4800L  # -7.95423312160048E269

    move-object/from16 v12, p0

    invoke-static {v10, v11, v12, v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_40
    move-object/from16 v12, p0

    :goto_42
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4c
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1a9

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x2e

    sget-char v14, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    const-string v14, "$package_name$"

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "$project_name$"

    invoke-virtual {v11, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "$flavor_name$"

    invoke-virtual {v11, v15, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extract "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    :try_start_a0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_af

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_e4

    :cond_af
    array-length v0, v7
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b0} :catch_19f

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v0, :cond_d6

    aget-object v11, v7, v2

    :try_start_b5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v0

    const-string v0, "/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {v8, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    goto :goto_b1

    :cond_d6
    if-nez v1, :cond_e7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_e4

    goto :goto_e7

    :cond_e4
    :goto_e4
    const/4 v2, 0x0

    goto/16 :goto_1a4

    :cond_e7
    :goto_e7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "build.gradle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".java"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".cpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".cc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".hpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".htm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".css"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    const-string v2, ".js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    goto :goto_167

    :cond_15a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_15f} :catch_19f

    const/4 v2, 0x0

    :try_start_160
    invoke-static {v10, v0, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1a4

    :cond_167
    :goto_167
    const/4 v2, 0x0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "\r\n"

    const-string v15, "\n"

    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "$package_name_jni$"

    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/io/OutputStreamWriter;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_19c} :catch_19d

    goto :goto_1a4

    :catch_19d
    move-exception v0

    goto :goto_1a1

    :catch_19f
    move-exception v0

    const/4 v2, 0x0

    :goto_1a1
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_1a4
    move-object/from16 v2, p3

    const/4 v9, 0x0

    goto/16 :goto_4c

    :cond_1a9
    return-object v8
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0xfb2418fb35bcd69L  # -9.235588903939753E232

    :try_start_5
    sget-boolean v2, Labcd/Sk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_20

    invoke-static {p1}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->aM(Ljava/lang/String;)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Sk;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "."

    :try_start_2
    sget-boolean v1, Labcd/Sk;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, -0xf38a095d2e01d00L  # -1.8578719309476038E235

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_47

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_3c

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_44

    :cond_3c
    return v2

    :cond_3d
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_4f

    if-lez p1, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    return v2

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0xf38a095d2e01d00L  # -1.8578719309476038E235

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/s1243808733/aide/AdvancedSetting;->getPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xc46bd1e2a467c03L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual {p0, p1, p2}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_3b

    if-eqz p1, :cond_39

    return v1

    :cond_39
    const/4 p1, 0x1

    return p1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0xc46bd1e2a467c03L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xf60a98832257f3bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1, p2}, Labcd/Sk;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p2

    :cond_13
    const/4 v0, 0x2

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Labcd/Sk;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-object p1

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0xf60a98832257f3bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x8bd730988237a70L  # -2.990783522221042E266

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    return-object p1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x8bd730988237a70L  # -2.990783522221042E266

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public j6()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Labcd/Sk$a;",
            ">;>;"
        }
    .end annotation

    const-wide v0, -0x131b7467a601c448L  # -3.541271697289971E216

    :try_start_5
    sget-boolean v2, Labcd/Sk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/IProject;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v5, :cond_36

    aget-object v8, v4, v7

    invoke-interface {v8}, Labcd/IProject;->getTemplates()[Labcd/Sk$a;

    move-result-object v8

    if-eqz v8, :cond_33

    array-length v9, v8

    const/4 v10, 0x0

    :goto_29
    if-ge v10, v9, :cond_33

    aget-object v11, v8, v10

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_36
    new-instance v4, Labcd/Rk;

    invoke-direct {v4, p0}, Labcd/Rk;-><init>(Labcd/Sk;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sk$a;

    iget-object v6, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v6, v6, Labcd/Sk$b;->tp:Z

    if-eqz v6, :cond_42

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sk$a;

    iget-object v5, v4, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v5, v5, Labcd/Sk$b;->tp:Z

    if-nez v5, :cond_5c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_7b
    .catchall {:try_start_5 .. :try_end_7b} :catchall_b0

    const-string v4, ""

    :goto_7d
    :try_start_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sk$a;

    iget-object v6, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v6, v6, Labcd/Sk$b;->v5:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v4, v4, Labcd/Sk$b;->v5:Ljava/lang/String;

    :cond_9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catchall {:try_start_7d .. :try_end_ae} :catchall_b0

    goto :goto_7d

    :cond_af
    return-object v3

    :catchall_b0
    move-exception v2

    sget-boolean v3, Labcd/Sk;->DW:Z

    if-eqz v3, :cond_b8

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b8
    goto :goto_ba

    :goto_b9
    throw v2

    :goto_ba
    goto :goto_b9
.end method

.method public j6(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Labcd/Sk$a;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2c350a742e9e628L

    :try_start_5
    sget-boolean v2, Labcd/Sk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/IProject;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v4, :cond_3b

    aget-object v7, v3, v6

    invoke-interface {v7}, Labcd/IProject;->getTemplates()[Labcd/Sk$a;

    move-result-object v7

    if-eqz v7, :cond_38

    array-length v8, v7
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_44

    const/4 v9, 0x0

    :goto_24
    if-ge v9, v8, :cond_38

    aget-object v10, v7, v9

    :try_start_28
    iget-object v11, v10, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v11, v11, Labcd/Sk$b;->we:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_3b
    new-instance v3, Labcd/Qk;

    invoke-direct {v3, p0}, Labcd/Qk;-><init>(Labcd/Sk;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_44

    return-object v2

    :catchall_44
    move-exception v2

    sget-boolean v3, Labcd/Sk;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Labcd/Sk$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    :try_start_2
    sget-boolean v0, Labcd/Sk;->j6:Z

    if-eqz v0, :cond_1a

    const-wide v1, 0x1a7b5eb271bf09a0L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create project "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v1, v1, Labcd/Sk$b;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    iget-object v2, v9, Labcd/Sk$a;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_b1

    const/16 v0, 0x2e

    const/16 v1, 0x5f

    move-object/from16 v7, p3

    :try_start_40
    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_af

    :try_start_49
    invoke-virtual/range {p0 .. p2}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "templates/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Labcd/Sk$a;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v12, 0x1

    iget-object v3, v9, Labcd/Sk$a;->Hw:[Ljava/lang/String;

    move-object/from16 v10, p0

    move-object v11, v2

    move-object v13, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p4

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Labcd/Sk;->j6(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, v9, Labcd/Sk$a;->Hw:[Ljava/lang/String;

    array-length v4, v2
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_8d} :catch_aa
    .catchall {:try_start_49 .. :try_end_8d} :catchall_af

    const/4 v5, 0x0

    :goto_8e
    if-ge v5, v4, :cond_a2

    aget-object v6, v2, v5

    :try_start_92
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    :cond_a2
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-virtual {v2, v0}, Labcd/Ji;->DW(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a9} :catch_aa
    .catchall {:try_start_92 .. :try_end_a9} :catchall_af

    goto :goto_ae

    :catch_aa
    move-exception v0

    :try_start_ab
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    :goto_ae
    return-object v1

    :catchall_af
    move-exception v0

    goto :goto_b4

    :catchall_b1
    move-exception v0

    move-object/from16 v7, p3

    :goto_b4
    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_cd

    const-wide v2, 0x1a7b5eb271bf09a0L

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method

.method public j6(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sk;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x17bf4431bb1a660L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v3, 0x0

    const-string v8, ""

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p4

    invoke-direct/range {v1 .. v9}, Labcd/Sk;->j6(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-object p1

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Sk;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x17bf4431bb1a660L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method
