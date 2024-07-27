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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yI;->j6:Ljava/io/File;

    iput-object p2, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;

    return-void
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private DW()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v0, p0, Labcd/yI;->FH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Labcd/yI;->DW:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v1}, Labcd/yI;->j6(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    iput-wide v2, p0, Labcd/yI;->FH:J

    :cond_0
    iget-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Labcd/yI;->Hw:Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method private static FH(Ljava/lang/String;)Z
    .registers 2

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static Zo(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "yes"

    invoke-static {v0, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static j6(Labcd/pK;)Labcd/yI;
    .registers 6

    invoke-virtual {p0}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    :cond_0
    new-instance v1, Labcd/yI;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, ".ssh"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "config"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Labcd/yI;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v1}, Labcd/yI;->DW()Ljava/util/Map;

    return-object v1
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
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/yI$a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[ \t]*[= \t]"

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v0, "Host"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const-string v0, "[ \t]"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v0, v6, v1

    invoke-static {v0}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    if-nez v0, :cond_2

    new-instance v0, Labcd/yI$a;

    invoke-direct {v0}, Labcd/yI$a;-><init>()V

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HostName"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->DW:Ljava/lang/String;

    if-nez v7, :cond_4

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Labcd/yI$a;->DW:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v0, "User"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->v5:Ljava/lang/String;

    if-nez v7, :cond_6

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Labcd/yI$a;->v5:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v0, "Port"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget v7, v0, Labcd/yI$a;->FH:I

    if-nez v7, :cond_8

    iput v1, v0, Labcd/yI$a;->FH:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "IdentityFile"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->Hw:Ljava/io/File;

    if-nez v7, :cond_a

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Labcd/yI;->v5(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, v0, Labcd/yI$a;->Hw:Ljava/io/File;

    goto :goto_5

    :cond_b
    const-string v0, "PreferredAuthentications"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->Zo:Ljava/lang/String;

    if-nez v7, :cond_c

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/yI;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Labcd/yI$a;->Zo:Ljava/lang/String;

    goto :goto_6

    :cond_d
    const-string v0, "BatchMode"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    if-nez v7, :cond_e

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/yI;->Zo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    goto :goto_7

    :cond_f
    const-string v0, "StrictHostKeyChecking"

    invoke-static {v0, v1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Labcd/yI;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    iget-object v7, v0, Labcd/yI$a;->gn:Ljava/lang/String;

    if-nez v7, :cond_10

    iput-object v1, v0, Labcd/yI$a;->gn:Ljava/lang/String;

    goto :goto_8
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Labcd/OD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/OD;-><init>(Ljava/lang/String;Ljava/lang/Character;)V
    :try_end_0
    .catch Labcd/bD; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Labcd/OD;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OD;->j6()Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "~/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/yI;->j6:Ljava/io/File;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/yI;->j6:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Labcd/yI$a;
    .registers 6

    invoke-direct {p0}, Labcd/yI;->DW()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    if-nez v0, :cond_6

    new-instance v0, Labcd/yI$a;

    invoke-direct {v0}, Labcd/yI$a;-><init>()V

    move-object v2, v0

    :goto_0
    iget-boolean v0, v2, Labcd/yI$a;->j6:Z

    if-eqz v0, :cond_0

    :goto_1
    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Labcd/yI$a;->DW:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, v2, Labcd/yI$a;->DW:Ljava/lang/String;

    :cond_2
    iget-object v0, v2, Labcd/yI$a;->v5:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Labcd/yI;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Labcd/yI$a;->v5:Ljava/lang/String;

    :cond_3
    iget v0, v2, Labcd/yI$a;->FH:I

    if-nez v0, :cond_4

    const/16 v0, 0x16

    iput v0, v2, Labcd/yI$a;->FH:I

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v2, Labcd/yI$a;->j6:Z

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/yI;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Labcd/yI;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yI$a;

    invoke-virtual {v2, v0}, Labcd/yI$a;->j6(Labcd/yI$a;)V

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method
