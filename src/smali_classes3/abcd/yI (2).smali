.class public Labcd/yI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/yI$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/io/File;

.field private FH:J

.field private Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yI;->j6:Ljava/io/File;

    iput-object p2, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Labcd/yI;->Hw:Ljava/util/Map;

    return-void
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method

.method private DW()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/yI;->FH:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_37

    cmp-long v4, v0, v2

    if-eqz v4, :cond_33

    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_2b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_23
    .catchall {:try_start_d .. :try_end_14} :catchall_37

    :try_start_14
    invoke-direct {p0, v2}, Labcd/yI;->j6(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_31

    :catchall_1e
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_23} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_37

    :catch_23
    move-exception v2

    :try_start_24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_28
    iput-object v2, p0, Labcd/yI;->Hw:Ljava/util/Map;

    goto :goto_31

    :catch_2b
    move-exception v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_28

    :goto_31
    iput-wide v0, p0, Labcd/yI;->FH:J

    :cond_33
    iget-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method private static FH(Ljava/lang/String;)Z
    .registers 2

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private static Zo(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "yes"

    invoke-static {v0, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static j6(Labcd/pK;)Labcd/yI;
    .registers 5

    invoke-virtual {p0}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_11

    new-instance p0, Ljava/io/File;

    const-string v0, "."

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    :cond_11
    new-instance v0, Labcd/yI;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, ".ssh"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Labcd/yI;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v0}, Labcd/yI;->DW()Ljava/util/Map;

    return-object v0
.end method

.method static j6()Ljava/lang/String;
    .registers 1

    new-instance v0, Labcd/xI;

    invoke-direct {v0}, Labcd/xI;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private j6(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_15

    :cond_2f
    const-string v3, "[ \t]*[= \t]"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Host"

    invoke-static {v5, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string v4, "[ \t]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_56
    if-lt v3, v6, :cond_59

    goto :goto_15

    :cond_59
    aget-object v2, v5, v3

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    if-nez v4, :cond_6f

    new-instance v4, Labcd/yI$a;

    invoke-direct {v4}, Labcd/yI$a;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_15

    :cond_7c
    const-string v3, "HostName"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88
    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_15

    :cond_8f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->DW:Ljava/lang/String;

    if-nez v5, :cond_88

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Labcd/yI$a;->DW:Ljava/lang/String;

    goto :goto_88

    :cond_a0
    const-string v3, "User"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ac
    :goto_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b4

    goto/16 :goto_15

    :cond_b4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->v5:Ljava/lang/String;

    if-nez v5, :cond_ac

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Labcd/yI$a;->v5:Ljava/lang/String;

    goto :goto_ac

    :cond_c5
    const-string v3, "Port"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    :try_start_cd
    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d9
    :goto_d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e1

    goto/16 :goto_15

    :cond_e1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget v5, v4, Labcd/yI$a;->FH:I

    if-nez v5, :cond_d9

    iput v2, v4, Labcd/yI$a;->FH:I
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_ed} :catch_ee

    goto :goto_d9

    :catch_ee
    move-exception v2

    goto/16 :goto_15

    :cond_f1
    const-string v3, "IdentityFile"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_fd
    :goto_fd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_105

    goto/16 :goto_15

    :cond_105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->Hw:Ljava/io/File;

    if-nez v5, :cond_fd

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Labcd/yI;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, v4, Labcd/yI$a;->Hw:Ljava/io/File;

    goto :goto_fd

    :cond_11a
    const-string v3, "PreferredAuthentications"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_143

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_126
    :goto_126
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_12e

    goto/16 :goto_15

    :cond_12e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->Zo:Ljava/lang/String;

    if-nez v5, :cond_126

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/yI;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Labcd/yI$a;->Zo:Ljava/lang/String;

    goto :goto_126

    :cond_143
    const-string v3, "BatchMode"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14f
    :goto_14f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_157

    goto/16 :goto_15

    :cond_157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    if-nez v5, :cond_14f

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/yI;->Zo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    goto :goto_14f

    :cond_16c
    const-string v3, "StrictHostKeyChecking"

    invoke-static {v3, v4}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v2}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17c
    :goto_17c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_184

    goto/16 :goto_15

    :cond_184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yI$a;

    iget-object v5, v4, Labcd/yI$a;->gn:Ljava/lang/String;

    if-nez v5, :cond_17c

    iput-object v2, v4, Labcd/yI$a;->gn:Ljava/lang/String;

    goto :goto_17c
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Labcd/OD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/OD;-><init>(Ljava/lang/String;Ljava/lang/Character;)V
    :try_end_6
    .catch Labcd/bD; {:try_start_0 .. :try_end_6} :catch_e

    invoke-virtual {v0, p1}, Labcd/OD;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OD;->j6()Z

    move-result p0

    return p0

    :catch_e
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private v5(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "~/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/yI;->j6:Ljava/io/File;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/yI;->j6:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Labcd/yI$a;
    .registers 6

    invoke-direct {p0}, Labcd/yI;->DW()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yI$a;

    if-nez v1, :cond_11

    new-instance v1, Labcd/yI$a;

    invoke-direct {v1}, Labcd/yI$a;-><init>()V

    :cond_11
    iget-boolean v2, v1, Labcd/yI$a;->j6:Z

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v0, v1, Labcd/yI$a;->DW:Ljava/lang/String;

    if-nez v0, :cond_2a

    iput-object p1, v1, Labcd/yI$a;->DW:Ljava/lang/String;

    :cond_2a
    iget-object p1, v1, Labcd/yI$a;->v5:Ljava/lang/String;

    if-nez p1, :cond_34

    invoke-static {}, Labcd/yI;->j6()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Labcd/yI$a;->v5:Ljava/lang/String;

    :cond_34
    iget p1, v1, Labcd/yI$a;->FH:I

    if-nez p1, :cond_3c

    const/16 p1, 0x16

    iput p1, v1, Labcd/yI$a;->FH:I

    :cond_3c
    const/4 p1, 0x1

    iput-boolean p1, v1, Labcd/yI$a;->j6:Z

    return-object v1

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/yI;->FH(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_1e

    :cond_53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/yI;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_1e

    :cond_60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yI$a;

    invoke-virtual {v1, v2}, Labcd/yI$a;->j6(Labcd/yI$a;)V

    goto :goto_1e
.end method
