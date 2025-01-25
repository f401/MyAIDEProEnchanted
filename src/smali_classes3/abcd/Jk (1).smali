.class public Labcd/Jk;
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


# instance fields
.field private FH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x1d48c51bac0920b0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Labcd/Be$g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x5e4442f1f3e378e9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/Be$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Jk;

    const-wide v1, 0x1227d23c1060aa1L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1aa3b234352272f1L

    :try_start_6
    sget-boolean v3, Labcd/Jk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Jk;->FH:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Jk;->Hw:Ljava/util/Map;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/Jk;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static DW(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;
    .registers 9

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_f

    const-wide v1, 0x23b1bd45323e8661L  # 9.533653510117346E-137

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Labcd/Be$m;->gn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/maven-metadata.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_47

    return-object p0

    :catchall_47
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, 0x23b1bd45323e8661L  # 9.533653510117346E-137

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method public static DW(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_13

    const-wide v2, 0x5ddfad9a780c0500L

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Labcd/Be$m;->gn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_6b

    return-object p0

    :catchall_6b
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_7e

    const-wide v2, 0x5ddfad9a780c0500L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    throw v0
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11fabf66211b9dbcL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x565fb62cffa6bd3L

    :try_start_6
    sget-boolean v3, Labcd/Jk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    aget-object p0, v3, v4
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    move-exception v3

    sget-boolean v4, Labcd/Jk;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x867fa82e498b440L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x10441d5fff1ed33L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/maven-metadata.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Labcd/He;

    invoke-direct {v1}, Labcd/He;-><init>()V

    invoke-virtual {v1, v0}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/He;

    invoke-virtual {v0, p2}, Labcd/He;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_5e

    if-eqz v0, :cond_35

    return-object v0

    :cond_35
    :try_start_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->v5(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_56
    invoke-static {v0, p2}, Labcd/He;->j6(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5a} :catch_5b
    .catchall {:try_start_35 .. :try_end_5a} :catchall_5e

    return-object p1

    :catch_5b
    move-exception p1

    const/4 p1, 0x0

    return-object p1

    :catchall_5e
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_6f

    const-wide v2, 0x10441d5fff1ed33L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v0

    :goto_71
    goto :goto_70
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2391b02484c02575L
    .end annotation

    const-string v0, ".aar"

    :try_start_2
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_13

    const-wide v2, -0x6d3d59f1c0ac1f0L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    return-object v1

    :cond_36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_92

    array-length v2, v1
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_94

    const/4 v3, 0x0

    :goto_43
    if-ge v3, v2, :cond_92

    aget-object v4, v1, v3

    :try_start_47
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Labcd/He;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_8e
    .catchall {:try_start_47 .. :try_end_8e} :catchall_94

    return-object p1

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_92
    const/4 p1, 0x0

    return-object p1

    :catchall_94
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_a7

    const-wide v2, -0x6d3d59f1c0ac1f0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    goto :goto_a9

    :goto_a8
    throw v0

    :goto_a9
    goto :goto_a8
.end method

.method private FH(Labcd/Be$g;)Labcd/Be$g;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9b9c274cd5787afL
    .end annotation

    const-wide v0, 0x1424830587d630b0L

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$g;
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    return-object v2

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x27d4afbf9c209100L
    .end annotation

    const-wide v0, 0x1fb107995cdee8c7L  # 4.961452536076639E-156

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, ".exploded.aar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_4b

    const-string v3, ".pom"

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xd

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_4b

    return-object p1

    :catchall_4b
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v2
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x25fd1abf8eefbbdfL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2340f8f60c31c000L  # 7.126198857505891E-139

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_45

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    array-length v4, v0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_47

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v4, :cond_45

    aget-object v6, v0, v5

    :try_start_33
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_47

    cmp-long v8, v6, v2

    if-gez v8, :cond_42

    return v1

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_45
    const/4 p1, 0x1

    return p1

    :catchall_47
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, 0x2340f8f60c31c000L  # 7.126198857505891E-139

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method private Hw(Labcd/Be$g;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x692328f8c4682ba5L
    .end annotation

    const-wide v0, -0x3b642e743edad2cL  # -5.016626219598794E290

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Jk;->Zo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v5, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v6, p1, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Labcd/Jk;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2f

    if-eqz v3, :cond_14

    return-object v3

    :cond_2d
    const/4 p1, 0x0

    return-object p1

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v2

    :goto_39
    goto :goto_38
.end method

.method private Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x32578f77078600L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Be$g;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x258b61f37f191c9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_65

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v3, p2, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v4, p2, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Labcd/Jk;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".exploded.aar"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Labcd/Jk;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_65
    iget-object v0, p0, Labcd/Jk;->FH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Labcd/Jk;->FH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7d

    const/4 p1, 0x0

    return-object p1

    :cond_7d
    return-object v0

    :cond_7e
    invoke-direct {p0, p2}, Labcd/Jk;->Hw(Labcd/Be$g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8c

    iget-object v1, p0, Labcd/Jk;->FH:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    :cond_8c
    iget-object v1, p0, Labcd/Jk;->FH:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_0 .. :try_end_91} :catchall_92

    :goto_91
    return-object v0

    :catchall_92
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_a3

    const-wide v2, 0x258b61f37f191c9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    goto :goto_a5

    :goto_a4
    throw v0

    :goto_a5
    goto :goto_a4
.end method

.method private Zo()Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xd86d5c8715dc554L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x2f0ac31d4489e75dL  # -1.0072773616212833E82

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/aa;->dx()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_3d

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    :try_start_21
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_35
    invoke-static {}, Labcd/Jk;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3d

    return-object v2

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v2

    :goto_47
    goto :goto_46
.end method

.method static synthetic j6()Ljava/lang/String;
    .registers 1

    invoke-static {}, Labcd/Jk;->v5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/Be$m;Labcd/Be$g;)Ljava/lang/String;
    .registers 9

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_f

    const-wide v1, 0x12fa748c4ec10aa0L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-static {}, Labcd/Jk;->v5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/maven-metadata.xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_49

    return-object p0

    :catchall_49
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x12fa748c4ec10aa0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method public static j6(Labcd/Be$m;Labcd/Be$g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_13

    const-wide v2, -0x4b31745922422fbL  # -8.597662520440441E285

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-static {}, Labcd/Jk;->v5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_2 .. :try_end_6c} :catchall_6d

    return-object p0

    :catchall_6d
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_80

    const-wide v2, -0x4b31745922422fbL  # -8.597662520440441E285

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x596564a72f0dee4L
    .end annotation

    move-object v9, p0

    move-object/from16 v8, p3

    const-string v0, ".jar"

    const-string v10, ".exploded.aar"

    const-string v11, ".aar"

    const-string v12, "/"

    :try_start_b
    sget-boolean v1, Labcd/Jk;->j6:Z

    if-eqz v1, :cond_1f

    const-wide v1, -0x2a0c72d700258fc1L  # -1.121028113870434E106

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_143

    move-object v5, p1

    :try_start_25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_13d

    move-object/from16 v6, p2

    :try_start_2f
    invoke-virtual {v6, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v2
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_13b

    if-eqz v2, :cond_139

    move-object/from16 v13, p4

    :try_start_48
    invoke-direct {p0, v1, v13}, Labcd/Jk;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_139

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_98

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_98
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ec
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_139

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Labcd/Jk;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_136
    .catchall {:try_start_48 .. :try_end_136} :catchall_137

    return-object v0

    :catchall_137
    move-exception v0

    goto :goto_146

    :cond_139
    const/4 v0, 0x0

    return-object v0

    :catchall_13b
    move-exception v0

    goto :goto_140

    :catchall_13d
    move-exception v0

    :goto_13e
    move-object/from16 v6, p2

    :goto_140
    move-object/from16 v13, p4

    goto :goto_146

    :catchall_143
    move-exception v0

    move-object v5, p1

    goto :goto_13e

    :goto_146
    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_15b

    const-wide v2, -0x2a0c72d700258fc1L  # -1.121028113870434E106

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15b
    goto :goto_15d

    :goto_15c
    throw v0

    :goto_15d
    goto :goto_15c
.end method

.method private j6(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc792e0b6ad1a05bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x7a7647889520530L  # 8.64828311203479E-272

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_17

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Labcd/Jk;->j6(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    :cond_17
    return-object v0

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, 0x7a7647889520530L  # 8.64828311203479E-272

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method static synthetic j6(Labcd/Jk;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Labcd/Jk;->FH:Ljava/util/Map;

    return-object p0
.end method

.method private j6(Labcd/Be$g;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x346f2d37aeb28e60L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xff2f2daebc36287L  # -5.63784273399462E231

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-static {v0}, Labcd/Jk;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Be$g;

    iget-object v2, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-static {v1, v2}, Labcd/Fe;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4a

    :cond_3c
    new-instance v2, Labcd/Be$g;

    invoke-direct {v2, p1, v1}, Labcd/Be$g;-><init>(Labcd/Be$g;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Be$g;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    if-lez p2, :cond_79

    new-instance v1, Labcd/Ie;

    invoke-direct {v1}, Labcd/Ie;-><init>()V

    invoke-direct {p0, v0}, Labcd/Jk;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Ie;

    iget-object v0, v0, Labcd/Ie;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Be$g;

    invoke-direct {p0, v1}, Labcd/Jk;->v5(Labcd/Be$g;)Z

    move-result v2

    if-nez v2, :cond_61

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2}, Labcd/Jk;->j6(Labcd/Be$g;I)V
    :try_end_78
    .catchall {:try_start_0 .. :try_end_78} :catchall_7a

    goto :goto_61

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_8f

    const-wide v2, -0xff2f2daebc36287L  # -5.63784273399462E231

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8f
    goto :goto_91

    :goto_90
    throw v0

    :goto_91
    goto :goto_90
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x12fd95a13007f414L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xd1a2d87f0a3f07L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Labcd/Jk;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_35

    if-nez v0, :cond_34

    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Labcd/FileSystemUtils;->j6(Ljava/io/InputStream;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extracted AAR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_30
    .catchall {:try_start_12 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :cond_34
    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0xd1a2d87f0a3f07L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method private j6(Ljava/util/Map;Labcd/Be$g;Ljava/util/List;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x14263c1c20dfcd77L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Be$g;",
            "Ljava/util/List<",
            "Labcd/Be$g;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x199e9da2dc36acc0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, p2}, Labcd/Jk;->FH(Labcd/Be$g;)Labcd/Be$g;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_23
    if-lez p4, :cond_52

    new-instance v1, Labcd/Ie;

    invoke-direct {v1}, Labcd/Ie;-><init>()V

    invoke-direct {p0, v0}, Labcd/Jk;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Ie;

    iget-object v0, v0, Labcd/Ie;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Be$g;

    invoke-direct {p0, v1}, Labcd/Jk;->v5(Labcd/Be$g;)Z

    move-result v2

    if-nez v2, :cond_3a

    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p1, v1, p3, v2}, Labcd/Jk;->j6(Ljava/util/Map;Labcd/Be$g;Ljava/util/List;I)V
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_53

    goto :goto_3a

    :cond_52
    :goto_52
    return-void

    :catchall_53
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_6a

    const-wide v2, -0x199e9da2dc36acc0L

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method private j6(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6aea0ca6becfd500L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x433d5d4ccd14ac71L  # 8.265358764190833E15

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p4, :cond_57

    new-instance v0, Labcd/Ie;

    invoke-direct {v0}, Labcd/Ie;-><init>()V

    invoke-direct {p0, p2}, Labcd/Jk;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Ie;

    iget-object v0, v0, Labcd/Ie;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Be$g;

    invoke-direct {p0, v1}, Labcd/Jk;->v5(Labcd/Be$g;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-direct {p0, v1}, Labcd/Jk;->FH(Labcd/Be$g;)Labcd/Be$g;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p1, v1, p3, v2}, Labcd/Jk;->j6(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_56
    .catchall {:try_start_0 .. :try_end_56} :catchall_58

    goto :goto_35

    :cond_57
    return-void

    :catchall_58
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_6f

    const-wide v2, 0x433d5d4ccd14ac71L  # 8.265358764190833E15

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v0

    :goto_71
    goto :goto_70
.end method

.method private static v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8c2d3312ccb22cL
    .end annotation

    const-wide v0, -0x33a9e843b2247b7L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Jk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.aide/maven"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getMavenDownloadDir()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object v0

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/Jk;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private v5(Labcd/Be$g;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb77a37301e2865dL
    .end annotation

    const-wide v0, -0x73e695cb7a540L

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    const-string v3, "android-all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method


# virtual methods
.method public DW(Labcd/Be$g;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x16fdbfe8f54027dL

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(Ljava/util/Map;Labcd/Be$g;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Be$g;",
            ")",
            "Ljava/util/List<",
            "Labcd/Be$g;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x211944788b44c3edL  # 3.087619826951674E-149

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Labcd/Jk;->j6(Ljava/util/Map;Labcd/Be$g;Ljava/util/List;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x211944788b44c3edL  # 3.087619826951674E-149

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v0, 0x17f3169a8e499563L

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Jk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x24bf99a86125bcf0L

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Jk;->Hw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH(Ljava/util/Map;Labcd/Be$g;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Be$g;",
            ")Z"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x32de8dffde93e80L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p2}, Labcd/Jk;->FH(Labcd/Be$g;)Labcd/Be$g;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x32de8dffde93e80L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public Hw()V
    .registers 7

    const-wide v0, -0x2b270fd45000c2b0L  # -5.454602301035207E100

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0d06c8

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Hk;

    invoke-direct {v4, p0}, Labcd/Hk;-><init>(Labcd/Jk;)V

    new-instance v5, Labcd/Ik;

    invoke-direct {v5, p0}, Labcd/Ik;-><init>(Labcd/Jk;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x1d9dd55ac5c737ddL  # 5.059241269947807E-166

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Labcd/Jk;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/util/Map;Labcd/Be$g;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Labcd/Be$g;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Jk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2b1d2dddb14730bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p2}, Labcd/Jk;->FH(Labcd/Be$g;)Labcd/Be$g;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/Jk;->Hw(Ljava/util/Map;Labcd/Be$g;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/Jk;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/Jk;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x2b1d2dddb14730bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public j6(Labcd/Be$g;)V
    .registers 6

    const-wide v0, -0x1eb038d771563d4cL  # -5.5846216533545405E160

    :try_start_5
    sget-boolean v2, Labcd/Jk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Labcd/Jk;->j6(Labcd/Be$g;I)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Jk;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method
