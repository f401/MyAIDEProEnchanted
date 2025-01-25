.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DF:Ljava/lang/String;

.field private static final INIT_PROBLEM:I = -0x1

.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

.field private static final OS:I

.field private static final OTHER:I = 0x0

.field private static final POSIX_UNIX:I = 0x3

.field private static final UNIX:I = 0x2

.field private static final WINDOWS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x3

    new-instance v0, Lorg/apache/commons/io/FileSystemUtils;

    invoke-direct {v0}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    const-string v0, "df"

    :try_start_a
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    new-instance v1, Ljava/io/IOException;

    const-string v2, "os.name not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v1

    const/4 v1, -0x1

    :cond_1c
    :goto_1c
    sput v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    sput-object v0, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    return-void

    :cond_21
    :try_start_21
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v1, 0x1

    goto :goto_1c

    :cond_31
    const-string v3, "linux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "mpe/ix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "freebsd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "openbsd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "irix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "digital unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "mac os x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    :cond_71
    const/4 v1, 0x2

    goto :goto_1c

    :cond_73
    const-string v3, "sun os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string v3, "sunos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string v3, "solaris"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_88} :catch_1a

    move-result v3

    if-eqz v3, :cond_8e

    :cond_8b
    const-string v0, "/usr/xpg4/bin/df"

    goto :goto_1c

    :cond_8e
    :try_start_8e
    const-string v3, "hp-ux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "aix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9b} :catch_1a

    move-result v2

    if-nez v2, :cond_1c

    const/4 v1, 0x0

    goto/16 :goto_1c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method freeSpaceOS(Ljava/lang/String;IZJ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    packed-switch p2, :pswitch_data_40

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception caught when determining operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15  #0x1
    if-eqz p3, :cond_1f

    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    :goto_1e
    return-wide v0

    :cond_1f
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_24  #0x2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_2e  #0x3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_1e

    :pswitch_38  #0x0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_15  #00000001
        :pswitch_24  #00000002
        :pswitch_2e  #00000003
    .end packed-switch
.end method

.method freeSpaceUnix(Ljava/lang/String;ZZJ)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v0, "-"

    if-eqz p2, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    if-eqz p3, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8a

    new-array v1, v6, [Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    move-object v0, v1

    :goto_51
    invoke-virtual {p0, v0, v6, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_93

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command line \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' did not return info as expected for path \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'- response was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    goto :goto_51

    :cond_93
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, " "

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_fb

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-ne v0, v4, :cond_d0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_d0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " "

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_c1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_d0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command line \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' did not return data as expected for path \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'- check path is valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fb
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-object v0, v1

    goto :goto_c1
.end method

.method freeSpaceWindows(Ljava/lang/String;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_9b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "cmd.exe"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "/C"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir /a /-c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2, p2, p3}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_65
    if-ltz v2, :cond_7c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_78

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_78
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_65

    :cond_7c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command line \'dir /-c\' did not return any info for path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    move-object v1, v0

    goto :goto_35
.end method

.method openProcess([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method parseBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_61

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command line \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' did not find free space in response for path \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'- check path is valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command line \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' did not return numeric data as expected for path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'- check path is valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_61
    return-wide v0
.end method

.method parseDir(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2e

    const/16 v5, 0x2c

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_b
    if-ltz v3, :cond_82

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4d

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_1a
    if-ltz v3, :cond_80

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_50

    if-eq v1, v5, :cond_50

    if-eq v1, v6, :cond_50

    add-int/lit8 v1, v3, 0x1

    :goto_2c
    if-gez v3, :cond_54

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command line \'dir /-c\' did not return valid info for path \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_50
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1a

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_77

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_6f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_74

    :cond_6f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_80
    move v1, v0

    goto :goto_2c

    :cond_82
    move v2, v0

    goto :goto_1a
.end method

.method performCommand([Ljava/lang/String;IJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_8
    invoke-static {p3, p4}, Lorg/apache/commons/io/ThreadMonitor;->start(J)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_123
    .catchall {:try_start_8 .. :try_end_f} :catchall_106

    move-result-object v2

    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_12c
    .catchall {:try_start_10 .. :try_end_13} :catchall_10d

    move-result-object v3

    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_133
    .catchall {:try_start_14 .. :try_end_17} :catchall_113

    move-result-object v4

    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_139
    .catchall {:try_start_18 .. :try_end_1b} :catchall_118

    move-result-object v0

    :try_start_1c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v6, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_2a} :catch_13e
    .catchall {:try_start_1c .. :try_end_2a} :catchall_11c

    :try_start_2a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    :goto_2e
    if-eqz v6, :cond_48

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, p2, :cond_48

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_2e

    :cond_48
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-static {v8}, Lorg/apache/commons/io/ThreadMonitor;->stop(Ljava/lang/Thread;)V

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v6

    if-eqz v6, :cond_bc

    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Command line returned OS error code \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_7f} :catch_7f
    .catchall {:try_start_2a .. :try_end_7f} :catchall_df

    :catch_7f
    move-exception v1

    move-object v6, v1

    :goto_81
    :try_start_81
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command line threw an InterruptedException for command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a8
    .catchall {:try_start_81 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v1

    move-object v6, v1

    :goto_aa
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_bb
    throw v6

    :cond_bc
    :try_start_bc
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e2

    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Command line did not return any info for command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_df
    move-exception v1

    move-object v6, v1

    goto :goto_aa

    :cond_e2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_e5} :catch_7f
    .catchall {:try_start_bc .. :try_end_e5} :catchall_df

    :try_start_e5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catch Ljava/lang/InterruptedException; {:try_start_e5 .. :try_end_e8} :catch_13e
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_11c

    if-eqz v4, :cond_ee

    :try_start_ea
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    move-object v4, v1

    :cond_ee
    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/InterruptedException; {:try_start_ea .. :try_end_f3} :catch_143
    .catchall {:try_start_ea .. :try_end_f3} :catchall_11f

    move-object v0, v1

    :cond_f4
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    if-eqz v2, :cond_105

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_105
    return-object v7

    :catchall_106
    move-exception v6

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto :goto_aa

    :catchall_10d
    move-exception v6

    move-object v3, v1

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto :goto_aa

    :catchall_113
    move-exception v6

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto :goto_aa

    :catchall_118
    move-exception v6

    move-object v0, v1

    move-object v5, v1

    goto :goto_aa

    :catchall_11c
    move-exception v6

    move-object v5, v1

    goto :goto_aa

    :catchall_11f
    move-exception v6

    move-object v3, v1

    move-object v5, v1

    goto :goto_aa

    :catch_123
    move-exception v0

    move-object v6, v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_81

    :catch_12c
    move-exception v6

    move-object v3, v1

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_81

    :catch_133
    move-exception v6

    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_81

    :catch_139
    move-exception v6

    move-object v0, v1

    move-object v5, v1

    goto/16 :goto_81

    :catch_13e
    move-exception v5

    move-object v6, v5

    move-object v5, v1

    goto/16 :goto_81

    :catch_143
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v5, v1

    goto/16 :goto_81
.end method
